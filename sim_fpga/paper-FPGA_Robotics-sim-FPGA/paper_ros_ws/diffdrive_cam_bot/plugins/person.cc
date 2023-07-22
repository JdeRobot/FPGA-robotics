/*
	
*/


#include <boost/bind.hpp>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <stdio.h>
#include <iostream>
#include <chrono>
#include <thread>

#define VBASE_MIN 0.25
#define VRAND_MIN 0.0625

namespace gazebo
{
    class Person : public ModelPlugin
    {

    private:
        int state;
        double vel;
        ignition::math::Pose3d pose;

    public:
        void Load(physics::ModelPtr _parent, sdf::ElementPtr)
        {
            this->model = _parent;
            this->updateConnection = event::Events::ConnectWorldUpdateBegin(
                boost::bind(&Person::OnUpdate, this, _1));

            std::cout << "Loading person to follow at " << this->model->WorldPose() << std::endl;

            // Init values
            this->state = 0;
            this->vel = VBASE_MIN + VRAND_MIN * double(rand()) / RAND_MAX * 1.0;
        }

    public:
        void OnUpdate(const common::UpdateInfo &)
        {
            pose = this->model->WorldPose();
            pose.Rot().Euler(0, 0, 0);
            this->model->SetWorldPose(pose);
            this->model->SetAngularVel(ignition::math::Vector3d(0, 0, 0));

            if (state == 0) {
                // Init vels
                this->model->SetLinearVel(ignition::math::Vector3d(1 * vel, 0, 0));
            } else if (state == 1) {
                this->model->SetLinearVel(ignition::math::Vector3d(-1 * vel, 0, 0));
            } else if (state == 2) {
                this->model->SetLinearVel(ignition::math::Vector3d(1 * vel, 0, 0));
            } else if (state == 3) {
                this->model->SetLinearVel(ignition::math::Vector3d(0, -1 * vel, 0));
            } else if (state == 4) {
                this->model->SetLinearVel(ignition::math::Vector3d(0, 1 * vel, 0));
            } else if (state == 5) {
                this->model->SetLinearVel(ignition::math::Vector3d(0, -1 * vel, 0));
            }

            // std::cout << "Status " << state << " at [" << pose.Pos() << "]" << std::endl;


            if (pose.Pos().X() >= 4) {
                state = 1;
                vel = VBASE_MIN + VRAND_MIN * double(rand()) / RAND_MAX * 1.0;
                // std::cout << "Status " << state << " at [" << pose.Pos() << "]" << std::endl;
            }
            if (pose.Pos().X() <= -4) {
                state = 2;
                vel = VBASE_MIN + VRAND_MIN * double(rand()) / RAND_MAX * 1.0;
                // std::cout << "Status " << state << " at [" << pose.Pos() << "]" << std::endl;
            }
            if (state == 2 && pose.Pos().X() >= 0) {
                state = 3;
                vel = VBASE_MIN + VRAND_MIN * double(rand()) / RAND_MAX * 1.0;
                // std::cout << "Status " << state << " at [" << pose.Pos() << "]" << std::endl;
            }
            if (pose.Pos().Y() <= 1) {
                state = 4;
                vel = VBASE_MIN + VRAND_MIN * double(rand()) / RAND_MAX * 1.0;
                // std::cout << "Status " << state << " at [" << pose.Pos() << "]" << std::endl;
            }
            if (pose.Pos().Y() >= 8) {
                state = 5;
                vel = VBASE_MIN + VRAND_MIN * double(rand()) / RAND_MAX * 1.0;
                // std::cout << "Status " << state << " at [" << pose.Pos() << "]" << std::endl;
            }
            if (state == 5 && pose.Pos().Y() <= 4) {
                state = 0;  // Reset
                vel = VBASE_MIN + VRAND_MIN * double(rand()) / RAND_MAX * 1.0;
                // std::cout << "Status " << state << " at [" << pose.Pos() << "]" << std::endl;
            }
        }

    private:
        physics::ModelPtr model;

    private:
        event::ConnectionPtr updateConnection;
    };
    GZ_REGISTER_MODEL_PLUGIN(Person)
}
