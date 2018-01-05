-- Copyright 2018, alex at staticlibs.net
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
-- http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

wrk.method = "POST"
wrk.body = '{ "$schema": "http://json-schema.org/draft-04/schema#", "title": "Template", "description": "Cloudformation template", "type": "object", "properties": { "AWSTemplateFormatVersion": { "type": "string", "enum": [ "2010-09-09" ] }, "Description": { "description": "Template description", "type": "string", "maxLength": 1024 }, "Parameters": { "type": "object", "patternProperties": { "^[a-zA-Z0-9]+$": { "$ref": "#/definitions/Parameter" } }, "maxProperties": 50, "additionalProperties": false }, "Mappings": { "type": "object", "patternProperties": { ".*": { "type": "object" } }, "additionalProperties": false }, "Conditions": { "type": "object", "patternProperties": { ".*": { "type": "object" } }, "additionalProperties": false }, "Resources": { "description": "Template resources", "type": "object", "patternProperties": { "^[a-zA-Z0-9]+$": { "$ref": "resource.json#" } }, "additionalProperties": false }, "Outputs": { "type": "object", "patternProperties": { ".*": { "type": "object", "properties": { "Value": { "$ref": "basic_types.json#/definitions/string" }, "Description": { "type": "string" } }, "required": [ "Value" ] } }, "minProperties": 1, "maxProperties": 10, "additionalProperties": false }, "Metadata": { "type": "object" } }, "required": [ "Resources" ], "additionalProperties": false, "definitions": { "Resource": { "type": "object", "properties": { "Properties": { "type": "object" }, "Type": { "type": "string" } }, "required": [ "Type" ] }, "Parameter": { "type": "object", "properties": { "Type": { "type": "string", "enum": [ "String", "Number", "List<Number>", "CommaDelimitedList", "AWS::EC2::AvailabilityZone::Name", "AWS::EC2::Image::Id", "AWS::EC2::Instance::Id", "AWS::EC2::KeyPair::KeyName", "AWS::EC2::SecurityGroup::GroupName", "AWS::EC2::SecurityGroup::Id", "AWS::EC2::Subnet::Id", "AWS::EC2::Volume::Id", "AWS::EC2::VPC::Id", "AWS::Route53::HostedZone::Id", "List<AWS::EC2::AvailabilityZone::Name>", "List<AWS::EC2::Image::Id>", "List<AWS::EC2::Instance::Id>", "List<AWS::EC2::SecurityGroup::GroupName>", "List<AWS::EC2::SecurityGroup::Id>", "List<AWS::EC2::Subnet::Id>", "List<AWS::EC2::Volume::Id>", "List<AWS::EC2::VPC::Id>", "List<AWS::Route53::HostedZone::Id>", "List<String>" ] }, "AllowedPattern": { "type": "string" }, "AllowedValues": { "type": "array" }, "ConstraintDescription": { "type": "string" }, "Default": { "type": "string" }, "Description": { "type": "string" }, "MaxLength": { "type": "string" }, "MaxValue": { "type": "string" }, "MinLength": { "type": "string" }, "MinValue": { "type": "string" }, "NoEcho": { "type": [ "string", "boolean" ] } }, "additionalProperties": false, "required": [ "Type" ] } }}'
wrk.headers["Content-Type"] = "application/json"
